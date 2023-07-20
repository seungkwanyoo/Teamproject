package org.zerock.oftenqnaController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/oftenQnA")
public class oftenqnaController {
	
	@GetMapping("/oftenQnA")
	public String oftenqna() {
		return null;
	}
}
