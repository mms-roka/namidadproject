
       
    <!-- content
    ================================================== --> 
    
    <div class="content">
        
        <section class="instruction">
            <p>to add a new country please fill out the form</p>
            <p>to edit use the table</p>
        
        </section><!-- END .instruction -->

       <section class="form"> 
           
           <ul>
               <?php
                   echo form_open('editor/country/add');
                       echo '<li>' . form_label('country','name');
                       echo form_input('name', set_value('name', '')) . '</li>';
                       echo '<li>' . form_submit('submit', 'submit') . '</li>';
                   echo form_close();
               ?>
           </ul>  
           
            
           <ul>
               <li>
                   <?php if (isset($message)) {
                       echo $message;
                   } ?>
               </li>
           </ul>


           <ul class="form-error-msg">
               <?php echo validation_errors('<li>', '</li>');   ?>
           </ul>
           
       </section><!-- end form--> 
       
       <section class="table">
           <table id="admintable">
               <thead>
                   <tr>
                       <th>nr</th>
                       <th>name</th>
                   </tr>
               </thead>
               <tbody>
                   <?php
                       foreach ($rows as $row) {
                           echo '<tr>
                                   <td>' . $row->id . '</td>
                                   <td class="edit pointer" id="name_'.$row->id.'">' . $row->name . '</td>
                               </tr>';
                       }
                   ?>
               </tbody>
           </table>
       </section>
        
    </div><!-- END .content -->

