<form>
<div class="container">
    <div class="row">

            <div class="form-group col-sm-3">
                <label for="result">Result type</label>
                <select class="form-control" id="result">
                    <option value="<?=JSON;?>"><?=getResultType(JSON);?></option>
                    <option value="<?=CSV;?>"><?=getResultType(CSV);?></option>
                </select>
            </div>
            <div class="form-group col-md-4">
                <button id="btn" class="btn btn-primary" onClick="getResults();return false;" type="button">Submit</button>
            </div>

    </div>
</div></form>