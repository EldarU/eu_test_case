<form action="export.php" method="GET">
    <div class="container">
        <div class="row">
            <div class="form-group col-sm-3">
                <label for="result">Result type</label>
                <select class="form-control" id="result" name="action">
                    <option value="<?=JSON;?>"><?=getResultType(JSON);?></option>
                    <option value="<?=CSV;?>"><?=getResultType(CSV);?></option>
                </select>
            </div>
            <div class="form-group col-md-4">
                <input id="btn" type="submit" class="btn btn-primary" value="Submit"/>
            </div>
        </div>
    </div>
</form>