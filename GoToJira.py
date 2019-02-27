# Enter script code
import re
import subprocess

def try_open_jira():
  keyboard.send_keys("<ctrl>+c")
  time.sleep(0.1)
  text = clipboard.get_clipboard()
  if re.match("^\w+-\d+\s*$", text):
    jiraUrl = "https://jira.syncron.com/browse/" + text
    subprocess.Popen(['xdg-open', jiraUrl])
    return True
  return False

def open_jira_main():
  if try_open_jira():
    return 
  keyboard.send_keys("<right>")
  keyboard.send_keys("<ctrl>+<shift>+<left>")
  keyboard.send_keys("<ctrl>+<shift>+<left>")
  keyboard.send_keys("<ctrl>+<shift>+<left>")
  try_open_jira()

open_jira_main()
