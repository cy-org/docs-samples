﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Microsoft.VisualBasic.PowerPacks;

namespace VbPowerPacksShapeModifierKeysCS
{
    public partial class ShapeModifierKeys : Form
    {
        public ShapeModifierKeys()
        {
            InitializeComponent();
        }

        // <Snippet1>
        private void rectangleShape1_Click(System.Object sender, System.EventArgs e)
        {
            if (Shape.ModifierKeys == Keys.Control)
            {
                ((Shape)sender).Hide();
            }
        }
        // </Snippet1>
    }
}
