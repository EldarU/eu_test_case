<form>
    <div class="container">
        <div class="row">
            <div class="form-group col-sm-3">
                <label for="date">Date</label>
                <input type="date" class="form-control" id="date" aria-describedby="dateHelp" placeholder="Date">
            </div>
            <div class="form-group col-sm-3">
                <label for="event">Event type</label>
                <select class="form-control" id="event">
                    <option value="1">View</option>
                    <option value="2">Play</option>
                    <option value="3">Click</option>
                </select>
            </div>
            <div class="form-group col-sm-3">
                <label for="country">Country</label>
                <select class="form-control" id="country">
                    <option value="US">USA</option>
                    <option value="CA">Canada</option>
                </select>
            </div>
            <div class="form-group col-sm-3">
                <label for="views">Views</label>
                <input type="text" class="form-control" id="views" placeholder="Views">
            </div>
            <div class="form-group col-sm-2">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</form>
