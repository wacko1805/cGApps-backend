
<html>
    <head>
        <script type="text/javascript" src="/assets/js/jszip.js"></script>
        <script type="text/javascript" src="/assets/js/jszip-utils.js"></script>
        <script src="/assets/js/FileSaver.js"></script>
        <script src="/assets/js/jquery-1.6.2.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 

       </head>
    <body onload="test()">
    <div id="overlay-back"></div>
<div id="overlay">
    <div id="dvLoading">
        <h2>Please wait</h2>
        <p>This may take a very long time....</p>
        <div class="bottom"><h2>Downloading selected apps and putting into a fashable zip...</h2>
        <p><p>DO NOT refresh or leave this page until download has started</p><br>
        </div>

        <div class="main">
          <div class="one"></div>
          <div class="two"></div>
          <div class="three"></div>
        </div>
    </div>
</div>
<script>
              $('#dvLoading, #overlay, #overlay-back').fadeIn(500);
            </script>
        </body>
    <script>
        
        function test() {
var urls = [
<?php 
  $brochure = $_POST['brochure'] ;
  foreach ($brochure as $file => $val) {
    echo "'/appset/" . $val . "',";
   }?>
];

var zip = new JSZip();
var moduleprop = $.get("/base/a12/module.prop");
                var customize = $.get("/base/a12/customize.sh");
                var changelog = $.get("/base/a12/changelog.yaml");
                //META
                var updatebin = $.get("/base/a12/META-INF/com/google/android/update-binary");
                var updaterscript = $.get("/base/a12/META-INF/com/google/android/updater-script");
                var manifest = $.get("/base/a12/META-INF/MANIFEST.MF");
                var nikrsa = $.get("/base/a12/META-INF/Nik.RSA");
                var niksf = $.get("/base/a12/META-INF/Nik.SF");
                // COMMON
                var addon = $.get("/base/a12/common/addon");
                var filesize = $.get("/base/a12/common/file_size");
                var funcions = $.get("/base/a12/common/functions");
                var header = $.get("/base/a12/common/header");
                var install = $.get("/base/a12/common/install.sh");
                var mount = $.get("/base/a12/common/mount.sh");
                var nikgapps_func = $.get("/base/a12/common/nikgapps_functions.sh");
                var nikgapps = $.get("/base/a12/common/nikgapps.sh");
                var unmount = $.get("/base/a12/common/unmount.sh");
                //AFZC
                var debloat = $.get("/base/a12/afzc/debloater.config");
                var ngconfig = $.get("/base/a12/afzc/nikgapps.config");

    var count = 0;
    var count2 = 0;
    var zipFilename = "CustomGApps_A12_<?php echo date("Y-m-d-h:i:sa");?>.zip";
    var nameFromURL = [];

    var the_arr = "";
    for (var i = 0; i< urls.length; i++){
        the_arr = urls[i].split('/');
        nameFromURL[i] = the_arr.pop();

    }

    urls.forEach(function(url){
        var filename = nameFromURL[count2];
        var foldername = filename.split('.').slice(0, -1).join('.');
        count2++;
        // loading a file and add it in a zip file
        JSZipUtils.getBinaryContent(url, function (err, data) {
            if(err) {
                throw err; // or handle the error
            }
      
            zip.file("module.prop", moduleprop);
                        zip.file("customize.sh", customize);
                        zip.file("changelog.yaml", changelog);
                        zip.file("META-INF/com/google/android/update-binary", updatebin);
                        zip.file("META-INF/com/google/android/updater-script", updaterscript);
                        zip.file("common/addon", addon);
                        zip.file("common/file_size", filesize);
                        zip.file("common/functions", funcions);
                        zip.file("common/header", header);
                        zip.file("common/install.sh", install);
                        zip.file("common/mount.sh", mount);
                        zip.file("common/nikgapps_functions.sh", nikgapps_func);
                        zip.file("common/nikgapps.sh", nikgapps);
                        zip.file("common/unmount.sh", unmount);
                        zip.file("afzc/debloater.config", debloat);
                        zip.file("afzc/nikgapps.config", ngconfig);
                        zip.file("META-INF/MANIFEST.MF", manifest);
                        zip.file("META-INF/Nik.RSA", nikrsa);
                        zip.file("META-INF/Nik.SF", niksf);
                        zip.file("AppSet/" + foldername + "/" + filename, data, {binary:true});
            count++;
            if (count === urls.length) {
                zip.generateAsync({type:'blob'}).then(function(content) {
                    saveAs(content, zipFilename);
                });
            }
        });
    });
}
    </script>
</html>