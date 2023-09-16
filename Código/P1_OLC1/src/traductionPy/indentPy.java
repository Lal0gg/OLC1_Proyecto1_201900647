package traductionPy;

public class indentPy {

private int count = 0;
    private int indentationLevel = 0;
    private final String indentationString = "    ";

    public void incrementCount() {
        count++;
    }

    public void resetCount() {
        count = 0;
    }

    public void setIndentationLevel(int level) {
        indentationLevel = level;
    }

    public String getIndentation() {
        StringBuilder indentation = new StringBuilder();
        for (int i = 0; i < indentationLevel; i++) {
            indentation.append(indentationString);
        }
        return indentation.toString();
    }

    public String concatenateWithIndentation(String text) {
        StringBuilder indentedText = new StringBuilder();
        indentedText.append(getIndentation()).append(text);
        incrementCount();
        return indentedText.toString();
    }
}
