$(document).ready(function () {


    $('#TableGroup tfoot th').each(function () {
        var title = $(this).text();
        $(this).html('<input type="text" placeholder="Search ' + title + '" />');
    });
    var tablegroup = $('#TableGroup').DataTable({
        //dom: 'C<"clear"><"top"B><"search" f>rt<"bottom"lpi><"clear">',
        dom: 'Bfrtip',
        responsive: true,
        select: 'os',
        buttons: [
           {
               extend: 'collection',
               text: 'Export',
               buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
               exportOptions: {
                   modifier: {
                       selected: true
                   }
               }
           },

             {
                 extend: 'collection',
                 text: 'Show /Hide columns',
                 extend: ['colvis'],
                 columns: ':gt(0)', //Show the colvis button, but do not include the first column in the list of columns
             },

            'colvisRestore',


                {
                    className: 'addBtn',
                    text: 'Add New',
                    name: 'add'        // do not change name

                }

        ],
        "columnDefs": [{ "visible": false, "targets": [1, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21] }]
    });
    tablegroup.columns().every(function () {
        var that = this;

        $('input', this.footer()).on('keyup change', function () {
            if (that.search() !== this.value) {
                that
                    .search(this.value)
                    .draw();
            }
        });
    });
    $(".addBtn").click(function () {
        GetViewEmployee();

    });
    function GetViewEmployee() {
        var action = "/Employee/GetViewEmployee";
        $.fancybox({ type: "ajax", href: action + "?r=" + Math.random() });

    }
    $("#deleteBtn").click(function () {
        var ids = $("#TableGroup .pointer.selected").attr("id");
        alert(ids);
        $.post("ajax/test.html", { id: "" }, function (data) {
            // $(".result").html(data);
        });
    });
});

