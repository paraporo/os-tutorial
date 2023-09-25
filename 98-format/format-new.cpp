#include <iostream>
#include <fstream>

void formatLine(char *line, size_t lineBufferSize);

int main(int argc, char **argv)
{
	if (argc < 2)
	{
		std::cout << "Usage: ./format-asm <asmFile>\n";
		return 1;
	}

	char *arg;
	std::ifstream file;
	std::ofstream outputFile;
	size_t lineBufferSize = 1000;
	char line[lineBufferSize];
	for (int argi{ 1 }; argi < argc; argi++)
	{
		arg = argv[argi];
		file.open(arg);
		if (!file.good())
		{
			std::cout << "No such file: " << arg << std::endl;
			file.close();
			continue;
		}
		outputFile.open("outputFile.asm");
		while (file.getline(line, lineBufferSize))
		{
			formatLine(line, lineBufferSize);
			outputFile << line << "\n";
		}

		file.close();
	}

	return 0;
}

void getWords(char const *line, size_t lineBufferSize, char **words)
{
	size_t wordBufferSize{ 100 };
	bool isWithinWord{ false };
	for (int lineCharIndex{ 0 }, wordCharIndex{ 0 }, wordIndex{ 0 }; lineCharIndex < lineBufferSize && wordCharIndex < wordBufferSize; lineCharIndex++)
	{
		if (isWithinWord && (line[lineCharIndex] == ' ' || ))
	}
}

void formatLine(char *line, size_t lineBufferSize)
{
	size_t resultBufferSize{ 1000 };
	char result[resultBufferSize];
	bool isWithinString{ false };
	char stringDelimiter{};
	
	for (int charIndex{ 0 }; charIndex < lineBufferSize; charIndex++)
	{
		if (line[charIndex] == '\'' || line[charIndex] == '\"')
		{
			if (!isWithinString)
			{
				isWithinString = true;
				stringDelimiter = line[charIndex];
			}
			else if (stringDelimiter == line[charIndex])
			{
				isWithinString = false;
			}
		}
		else if (line[charIndex] == ' ' || line[charIndex] == '\t')
		{

		}
		else if (line[charIndex] == '\0')
		{

		}
	}
}
