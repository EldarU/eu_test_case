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
                <input type="submit" id="btn" class="btn btn-primary" type="button" value="Submit"/>
            </div>
        </div>
    </div>
</form>
