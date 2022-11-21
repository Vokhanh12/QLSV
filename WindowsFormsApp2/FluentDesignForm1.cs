using DevExpress.XtraBars;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class FluentDesignForm1 : DevExpress.XtraBars.FluentDesignSystem.FluentDesignForm
    {
        public FluentDesignForm1()
        {
            InitializeComponent();
            accordionControl1.Appearance.Group.Normal.FontSizeDelta = 3;
            accordionControl1.Appearance.Group.Hovered.FontSizeDelta = 3;
            accordionControl1.Appearance.Group.Pressed.FontSizeDelta = 3;

            accordionControl1.Appearance.Item.Normal.FontSizeDelta = 1;
            accordionControl1.Appearance.Item.Hovered.FontSizeDelta = 1;
            accordionControl1.Appearance.Item.Pressed.FontSizeDelta = 1;
        }

        private void fluentDesignFormContainer1_Click(object sender, EventArgs e)
        {

        }

        private void accordionControl1_Click(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {
            
            
        }

        private void accordionControlElement9_Click(object sender, EventArgs e)
        {
            Frmdieuchinh dieuchinh = new Frmdieuchinh() {Dock=DockStyle.Fill, TopLevel = false ,TopMost=true };
            
            this.panel3.Controls.Add(dieuchinh);
            dieuchinh.Show();
        }

        private void accordionControlElement8_Click(object sender, EventArgs e)
        {
            FrmTimkiem timkiem = new FrmTimkiem() { Dock = DockStyle.Fill};

            this.panel3.Controls.Add(timkiem);
            timkiem.Show();
        }
    }
}
