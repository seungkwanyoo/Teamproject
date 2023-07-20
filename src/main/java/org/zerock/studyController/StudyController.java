package org.zerock.studyController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/study/*")
public class StudyController {
	
	@GetMapping("/study")
	public String Study() {
		return null;
	}
	
}
