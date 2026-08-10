.class Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;
.super Ljava/lang/Object;
.source "OSDateTimePicker.java"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthDayWheel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelItemChanged(II)V
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-le p2, p1, :cond_1

    sub-int p1, p2, p1

    if-le p1, v1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p1, p2, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$600(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    add-int/2addr p2, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    if-ge p2, p1, :cond_3

    sub-int/2addr p1, p2

    if-le p1, v1, :cond_2

    .line 364
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$600(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    goto :goto_0

    .line 366
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    add-int/2addr p2, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 369
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$700(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    .line 370
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$200(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    return-void
.end method

.method public onWheelScroll(I)V
    .locals 0

    return-void
.end method

.method public onWheelScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onWheelSelected(I)V
    .locals 0

    return-void
.end method
