.class Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;
.super Ljava/lang/Object;
.source "OSDateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setOnDateTimeSetListener(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 191
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$200(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$200(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$300(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 193
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 194
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 195
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 196
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 197
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 198
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 192
    invoke-interface/range {v0 .. v8}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;IIIIII)V

    :cond_0
    return-void
.end method
