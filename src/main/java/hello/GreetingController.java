package hello;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingController {

  @Value("${internal.property}")
  private String internal;

  @Value("${external.property}")
  private String external;

  @RequestMapping("/greeting")
  public String greeting(@RequestParam(value = "name", required = false, defaultValue = "World") String name,
      Model model) {
    model.addAttribute("name", name);
    model.addAttribute("internal", internal);
    model.addAttribute("external", external);
    return "greeting";
  }

}
