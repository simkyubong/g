package org.zerock.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.AttachFileDTO;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class UploadController {

	@GetMapping("/uploadForm")	// WEB-INF/view/uploadForm.jsp
	public void uploadForm() {

		log.info("upload form");
	}

	@PostMapping("/uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {

		String uploadFolder = "D:\\upload";

		for (MultipartFile multipartFile : uploadFile) {

			log.info("-------------------------------------");
			log.info("Upload File Name: " + multipartFile.getOriginalFilename());
			log.info("Upload File Size: " + multipartFile.getSize());
			// D:\\upload에 실제파일명 문자열을 saveFile변수에 저장
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			log.info("saveFile : "+saveFile);
			try {
				// transferTo(파일명) : 파일명으로 저장
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			} // end catch
		} // end for

	}

	@GetMapping("/uploadAjax")
	public void uploadAjax() {

		log.info("upload ajax");
	}

	private String getFolder() {
		// 날짜를 형태(format)를 yyyy-MM-dd로 sdf변수 저장
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 오늘 날짜를 date변수에 저장(Wed Oct 27 15:26:25 KST 2021 이러한 형태로 저장)
		Date date = new Date();
		log.info("date="+date);
		String str = sdf.format(date);// 오늘 날짜를 yyyy-MM-dd형태로 str변수에 저장.(Wed Oct 27 15:26:25 KST 2021 -> 2021-10-27)

		return str.replace("-", File.separator);// 2021-10-27 -> 2021\\10\\27
	}

	private boolean checkImageType(File file) {

		try {
			String contentType = Files.probeContentType(file.toPath());

			return contentType.startsWith("image");

		} catch (IOException e) {
			e.printStackTrace();
		}

		return false;
	}

	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		log.info("uploadFile="+uploadFile[0].getOriginalFilename());
// 여러개의 파일을 선택(ArrayList)을 해서 파일정보들을 AttaciFileDTO에 저장 
		List<AttachFileDTO> list = new ArrayList<>();
		// 실제 파일이 저장되는 경로
		String uploadFolder = "D:\\upload";
								// 2021\\10\\27
		String uploadFolderPath = getFolder();
		log.info("uploadFolderPath="+uploadFolderPath);
		// make folder --------
//  D:\\upload\\2021\\10\\27 	// 	D:\\upload,      2021\\10\\27
		File uploadPath = new File(uploadFolder, uploadFolderPath);

		if (uploadPath.exists() == false) {// D:\\upload\\2021\\10\\27 존재하지 않으면
			uploadPath.mkdirs();	// mkdirs()메소드는 폴더 생성기능을 하는 메소드
		}
		// make yyyy/MM/dd folder
		//          multipartFile 일반 변수  : uploadFile(배열)
		for (MultipartFile multipartFile : uploadFile) {

			AttachFileDTO attachDTO = new AttachFileDTO();
			// IE 제외한 나머지 브라우저
			String uploadFileName = multipartFile.getOriginalFilename();

			// 브라우저가 IE이면
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			log.info("only file name: " + uploadFileName);
			// AttachFileDTO타입에 attachDTO참조변수에 fileName 변수에 파일이름을 저장
			attachDTO.setFileName(uploadFileName);
			// 파일명 중복 방지를 위한 UUID 문자열을 uuid 변수에 저장
			UUID uuid = UUID.randomUUID();
//4c024548-17e0-4047-95b8-909121e53e2b(uuid) + "_" + mainlogo_new.png
// => 4c024548-17e0-4047-95b8-909121e53e2b_mainlogo_new.png 문자열을 uploadFileName변수에 저장
			uploadFileName = uuid.toString() + "_" + uploadFileName;

			try {
//              saveFile변수에 저장    <- D:\\upload\\2021\\10\\27\\4c024548-17e0-4047-95b8-909121e53e2b_mainlogo_new.png

				File saveFile = new File(uploadPath, uploadFileName);
				
				multipartFile.transferTo(saveFile);// page 499 참조. transferTo메소드 : 파일 저장하는 메소드
				// AttachFileDTO타입에 attachDTO참조변수에 uuid 변수에 UUID를 저장
				attachDTO.setUuid(uuid.toString());
				// AttachFileDTO타입에 attachDTO참조변수에 uploadpath 변수에 파일경로을 저장
				attachDTO.setUploadPath(uploadFolderPath);

				// check image type file
				if (checkImageType(saveFile)) {	// 이미지 파일 이면.
					// AttachFileDTO타입에 attachDTO참조변수에 image 변수에 이미지 파일여부를 저장
					// 이미지 파일이면 true, 않으면 false
					attachDTO.setImage(true);
					//                                                         D:\\upload\\2021\\10\\27\\s_4c024548-17e0-4047-95b8-909121e53e2b_mainlogo_new.png
					
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					// Thumbnailator는 클래스 : 섬네일 관련 클래스
					//  Thumbnailator안에 createThumbnail는 메소드 : 실제 원본파일을 섬네일파일 형태로 만드는 기능이 있는 메소드
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}

				// add to List
				list.add(attachDTO);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} // end for
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	//
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) {

		log.info("fileName: " + fileName);
		//                   "D:\\upload\\"+2021%5C10%5C28%2Fs_24a7ffe4-0a5c-42dd-bb4a-e4149c7c1234_mainlogo_new.png
		File file = new File("D:\\upload\\" + fileName);
		//File file = new File("D:/upload/" + fileName);

		log.info("file: " + file);

		ResponseEntity<byte[]> result = null;

		try {
			HttpHeaders header = new HttpHeaders();

			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	@GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
												// download할 수 있는 환경을 hearder에 추가
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName) {
		//										   "D:\\upload\\" + "report.hwp"
		Resource resource = new FileSystemResource("D:\\upload\\" + fileName);
		
		if (resource.exists() == false) {	// 다운로드할 파일이 존재하지 않으면
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);	// 파일이 없다라는 메세지 웹브라우저에게 전달
		}
		// 다운로드 할 파일을 가져와서 resourceName 변수에 저장
		String resourceName = resource.getFilename();
		log.info("resourceName="+resourceName);
		// remove UUID
		// df650507-887d-4160-a5f4-b94446e6a567_report.hwp    _report.hwp라는 문자열이 resourceOriginalName변수에 저장
		//String resourceOriginalName = resourceName.substring(resourceName.indexOf("_"));
		// df650507-887d-4160-a5f4-b94446e6a567_report.hwp    report.hwp라는 문자열이 resourceOriginalName변수에 저장
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);

		HttpHeaders headers = new HttpHeaders();
		try {

			boolean checkIE = (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1);

			String downloadName = null;

			if (checkIE) {// checkIE가 true이면 지금 현재 사용자의 브라우저가 인터넷 익스플로어라는 의미.
				// 인터넷 익스플로어 브라우저 전용
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF8").replaceAll("\\+", " ");
			} else {
				// 인터넷 익스플로어 브라우저를 제외하고 처리하는 방식(chrome, safari)
				downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");
			}

			headers.add("Content-Disposition", "attachment; filename=" + downloadName);

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
//      ResponseEntity<>에서 처리                                                                 서버에서 파일이 정상적으로 인식되면(HttpStatus.OK),
		//              다운로드할 수 있도록 처리(resource)  HttpHeaders 객체를 이용해서(headers)
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
	

	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {

		log.info("deleteFile: " + fileName);

		File file;

		try {
			file = new File("D:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));

			file.delete();

			if (type.equals("image")) {

				String largeFileName = file.getAbsolutePath().replace("s_", "");

				log.info("largeFileName: " + largeFileName);

				file = new File(largeFileName);

				file.delete();
			}

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

		return new ResponseEntity<String>("deleted", HttpStatus.OK);

	}
	

}
