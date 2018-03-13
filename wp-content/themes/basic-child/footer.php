    </div>
</div>
<footer>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 text-center monfooter">
                <div class="row">
                    <div class="mx-auto prefooter">
                        <?php
                            wp_nav_menu(
                                array(
                                    'theme_location' => 'menufooter',
                                    'menu' => 'menufooter',
                                    'menu_id' => 'menufooter',
                                    'container' => false,
                                    'menu_class' => 'nav nav-pills nav-justified',
                                    'items_wrap' => '<ul class="%2$s">%3$s</ul>'
                                )
                            );
                        ?>
                    </div>
                </div>
                <p>&copy; Copyright 2018 - Maxime Joyes Company - Tous droits reservés</p>
            </div>
        </div>
    </div>
</footer>

<?php
wp_footer();