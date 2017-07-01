<form>
    <div class="container">
        <div class="row">
            <div class="form-group col-sm-3">
                <label for="event">Event type</label>
                <select class="form-control" id="event">
                    <option value="<?=VIEW;?>"><?=getEventType(VIEW);?></option>
                    <option value="<?=PLAY;?>"><?=getEventType(PLAY);?></option>
                    <option value="<?=CLICK;?>"><?=getEventType(CLICK);?></option>
                </select>
            </div>
            <div class="form-group col-sm-3">
                <label for="country">Country</label>
                <select class="form-control" id="country">
                    <option value="US">Select Country</option>
                    <?php if (is_array($countries) && count($countries)) { ?>
                        <?php foreach ($countries as $country) { ?>
                            <option value="<?=$country['code'];?>"><?=$country['title'];?></option>
                        <?php } ?>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group col-md-4">
                <button id="btn" class="btn btn-primary" onClick="sendResult();return false;" type="button">Submit</button>
            </div>
        </div>
    </div>
</form>
<script>
    var url = 'proc.php',
        country, event;

    function sendResult() {
        var data = {
            country : $('#country option:selected').val(),
            event : $('#event option:selected').val(),
        }

        $.ajax({
            url: url,
            dataType: 'json',
            contentType: 'application/json;charset=ascii',
            method: 'POST',
            data: data,
            success: function (data) {
                console.log(data);
            }
        });
    }


</script>
