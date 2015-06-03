stack = Faraday::RackBuilder.new do |builder|
  builder.response :logger
  builder.use Faraday::HttpCache
  builder.use Octokit::Response::RaiseError
  builder.adapter Faraday.default_adapter
end
Octokit.middleware = stack

class Sawyer::Resource
  def read_lines
    Base64.decode64(content) { |text| text.split("\n") }
  end
end

class IncompleteAPIResponse < StandardError
  def to_s
    "Github's API returned a truncated response because the tree had too many files. Clone the repo and iterate locally."
  end
end

def identify_lines
end

REPO = 'JasonBenn/raiseyourhand'

GREEN = "\e[0;32m"
RED = "\e[0;31m"
RESET = "\e[1;0m"

def parses?(parser, program)
  puts (parser.parse(program) ? "#{GREEN}✓" : "#{RED}✗") + " #{program}#{RESET}"
end

desc 'get raiseyourhand, mess around'
task :read do
  # TODO: how do you get the latest SHA?
  # tree = Octokit.tree REPO, '379bd17803ece6ab926535df98b210d206202640', recursive: true
  # raise IncompleteAPIResponse if tree.truncated
  # models = tree.tree.select {|file| file.path =~ /\.(rb)$/ }.select { |file| file.path =~ /^app\/models/ }
  # lines = models.map { |model| Octokit.contents(REPO, path: model.path).read_lines }
  # file = File.read('./models.txt')
  # file = File.read(File.join(_file_.split('/').slice(0..-2), 'models.txt'))

  # lines = file.split("\n").select { |line| line =~ /^\s*(validates)/  }.map &:strip
  file = File.read(File.join(Rails.root, 'lib/tasks/user_lesson.txt'))
  parser = ModelParser.new
  parses? parser, file
end
