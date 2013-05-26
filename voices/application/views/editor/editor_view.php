
     <!-- content
     ================================================== --> 
     
     <div class="content">
         
         <section class="instruction">
             <p>to add a new editor please fill out the form</p>
             <p>to edit use the table</p>

         </section><!-- END .instruction -->

        <section class="form"> 
            
            <ul>
                <?php
                    echo form_open('editor/editor/add');
                        echo '<li>' . form_label('firstname','firstname');
                        echo form_input('firstname', set_value('firstname', '')) . '</li>';
                        echo '<li>' . form_label('lastname','lastname');
                        echo form_input('lastname', set_value('lastname', '')) . '</li>';
                        echo '<li>' . form_label('username','username');
                        echo form_input('username', set_value('username', '')) . '</li>';
                        echo '<li>' . form_label('password','password');
                        echo form_password('password', set_value('password', '')) . '</li>';
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
                        <th>NR</th>
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>
                        <th>USER NAME</th>
                        <th>ACTIVE</th>
                    </tr>
                </thead>
                <tbody>
                    
                    
                    <?php
                        foreach ($rows as $row) {                            
                            ($row->is_authorised == 1)? $i = '' : $i='not ';
                             echo '<tr>
                                    <td>' . $row->id . '</td>
                                    <td class="edit pointer" id="firstname_'.$row->id.'"  >' . $row->firstname . '</td>
                                    <td class="edit pointer" id="lastname_'.$row->id.'">' . $row->lastname . '</td>
                                    <td class="edit pointer" id="username_'.$row->id.'">' . $row->username . '</td>
                                    <td class="edit pointer" id="is_authorised_'.$row->id.'" data-value="'.$row->is_authorised.'"><img src="'.base_url().'src/is_authorised_'.$row->is_authorised.'.png" 
                                                                 alt="This entry is '.$i.'active. Click to change." 
                                                                 title="This entry is '.$i.'active. Click to change." 
                                                                 class="status" /></td>
                                </tr>';
                        }
                    ?>
                </tbody>
            </table>
        </section>
         
     </div><!-- END .content -->
         
