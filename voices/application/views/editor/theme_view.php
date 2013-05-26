    <!-- content
    ================================================== --> 
    
    <div class="content">
        
        <section class="instruction">
            <p>to add a new theme please fill out the form</p>
            <p>to edit use the table</p>
        
        </section><!-- END .instruction -->

       <section class="form">
           <ul>
               <?php
                   echo form_open('editor/theme/add');
                       echo '<li>' . form_label('english','english');
                       echo form_input('english', set_value('english', '')) . '</li>';
                       echo '<li>' . form_label('japanese','japanese');
                       echo form_input('japanese', set_value('japanese', '')) . '</li>';
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
                       <th>theme english</th>
                       <th>theme japanese</th>
                   </tr>
               </thead>
               <tbody>
                   <?php
                       foreach ($rows as $row) {
                           echo '<tr>
                                   <td>' . $row->id . '</td>
                                   <td class="edit pointer" id="english_'.$row->id.'" >' . $row->english . '</td>
                                   <td class="edit pointer" id="japanese_'.$row->id.'" >' . $row->japanese . '</td>
                               </tr>';
                       }
                   ?>
               </tbody>
           </table>
       </section>
        
    </div><!-- END .content -->
        


