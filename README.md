# DocMan AI

Also available in Greek: [README.gr.md](./README.gr.md)


DocMan AI is a universal AI-assisted case documentation tool. It is designed to streamline your document creation and management process, especially for case completion. It leverages modern web technologies and AI to provide a rich and interactive user experience.

## Case Completion Workflow

DocMan AI, in combination with a case description and a JSON file (generated externally by multimodal LLMs like Gemini or ChatGPT), can significantly assist in completing cases. Here's how:

1.  **Data Preparation**: Provide a folder with all gathered documents (scanned documents, screenshots, etc.) to a multimodal LLM (e.g., Gemini, ChatGPT). Instruct the LLM to read these files and extract relevant case information, structuring it into a flat JSON file with `key` and `description` fields.
2.  **Plan and Task List**: Create a comprehensive plan and task list for completing a case.
3.  **Design Document Templates**: Design the necessary document templates with dynamic placeholders.
4.  **Fill Multiple Documents**: Fill multiple documents at once using the externally generated JSON data.
5.  **AI-Assisted Suggestions**: Get AI-assisted suggestions on what to complete in the placeholders, retrieving data from the case description and the JSON file.

## Features

- **Markdown Editor**: Powered by EasyMDE, offering a robust and intuitive markdown editing experience.
- **Live Preview**: Real-time rendering of markdown content using `marked.js` and `DOMPurify` for safe HTML output.
- **Mathematical Notation**: Integrated KaTeX for rendering beautiful mathematical equations.
- **Diagrams and Flowcharts**: Support for Mermaid diagrams to visualize complex processes directly within your documents.
- **AI Chat Integration**: Interact with a Gemini AI model to assist with document content, answer questions, and provide suggestions.
- **Dynamic Placeholders**: Automatically identify and fill multiple instances of placeholder fields within your markdown documents from a single input, with highlighting and synchronization between the editor and the view field panel.
- **Inline Context Menu AI-Assisted Editing**: Get AI assistance directly within the editor via a context menu for quick edits and suggestions.
- **Export Options**: Export your documents to various formats including Markdown, HTML, PDF, and DOCX (with `html-to-docx` library).
- **Theme Toggle**: Switch between light and dark themes for a personalized viewing experience.
- **File Management**: Drag and drop markdown files into the application for easy editing and management.
- **JSON Data Integration**: Upload and view JSON data to be used in conjunction with document content.
- **Responsive Layout**: Utilizes Split.js for resizable panels and Tailwind CSS for a modern, responsive UI.

## Technologies Used

- **Frontend**: HTML, CSS (Tailwind CSS), JavaScript
- **Libraries**: EasyMDE, marked.js, DOMPurify, FileSaver.js, Split.js, Axios, KaTeX, Mermaid, html-to-docx.
- **AI Integration**: Google Gemini API (requires API Key).

## Getting Started

To use DocMan AI, simply open the [DocMan_AI_v001.html](./DocMan_AI_v001.html) file in your web browser. Ensure you have an active internet connection for CDN-hosted libraries and to access the Gemini API.

### Gemini API Key

To enable AI functionalities, you will need to obtain a Gemini API Key and enter it into the designated field within the application.

## Known Limitations

- **Local Image Handling**: Does not accept local images via drag and drop; only linked images are supported.
- **Local Image Serving**: Works effectively with `miniserve` for serving local images.
- **DOCX Export**: Linked images are translated through Pandoc to create independent DOCX files with the images embedded.
- **Diagram and LaTeX Export**: Cannot create Mermaid diagrams or LaTeX equations directly in DOCX files. These features are best viewed in PDF exports.

## Usage

1. **Edit Markdown**: Use the left panel to write and edit your markdown content.
2. **Live Preview**: View the rendered output in the right panel.
3. **AI Chat**: Click the 'Chat' button to open the AI chat interface and interact with the Gemini model. Use it to create template documents apart from other things.
4. **Placeholders**: Define placeholders in your markdown (e.g., `[*placeholder_name*]`) and fill them in the 'Fill Placeholder Fields' section.
5. **Export**: Use the export buttons in the header to save your document in various formats.
6. **Theme**: Toggle between light and dark themes using the switch in the header.
