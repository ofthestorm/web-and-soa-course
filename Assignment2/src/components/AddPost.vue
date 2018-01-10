<style scoped>

  .editArea {
    margin-bottom: 20px;
  }

  #editor {
    height: 500px;
  }

</style>


<template>
  <div class="AddPost">
    <br/>
    <div class="ui three column grid">
      <div class="two wide column"></div>
      <div class="twelve wide column">

        <form>
          <h1>New post</h1>
          Title : <div class="ui input editArea"><input type="text" v-model="title"></div>

          <div id="editor">
            <p></p>
          </div>
          <br/>
        </form>

        <div class="center">
          <div id="save" v-on:click="save">
            <i class="checkmark box icon green big"></i> Submit
          </div>
        </div>

      </div>
      <div class="two wide column"></div>
    </div>
    <br/>
  </div>
</template>



<script>

  export default {
    name: 'AddPost',
    data () {
      return {
        title: "",
        content: ""
      }
    },
    methods: {
      save: function () {

//        var delta = quill.getContents();

        var quillHTML = quill.container.firstChild.innerHTML;
        this.content = quillHTML;
//        console.log(quillHTML);


      }
    },
    computed: {

    },
    created: function () {

    },
    mounted: function () {
      this.$nextTick(function () {
        var toolbarOptions = [
          ['bold', 'italic', 'underline', 'strike'],        // toggled buttons
          ['blockquote', 'code-block'],

          [{ 'header': 1 }, { 'header': 2 }],               // custom button values
          [{ 'list': 'ordered'}, { 'list': 'bullet' }],
          [{ 'script': 'sub'}, { 'script': 'super' }],      // superscript/subscript
          [{ 'indent': '-1'}, { 'indent': '+1' }],          // outdent/indent
          [{ 'direction': 'rtl' }],                         // text direction

          [{ 'size': ['small', false, 'large', 'huge'] }],  // custom dropdown
          [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
          [ 'link', 'image', 'video', 'formula' ],          // add's image support
          [{ 'color': [] }, { 'background': [] }],          // dropdown with defaults from theme
          [{ 'font': [] }],
          [{ 'align': [] }],

          ['clean']                                         // remove formatting button
        ];
        global.quill = new Quill('#editor', {
          theme: 'snow',
          toolbar: toolbarOptions
//          toolbar: [['bold', 'italic'], ['link', 'image']]
        });

//        var toolbar = quill.getModule('toolbar');
//        toolbar.addHandler('image', showImageUI);
      });
    }
  }

</script>
