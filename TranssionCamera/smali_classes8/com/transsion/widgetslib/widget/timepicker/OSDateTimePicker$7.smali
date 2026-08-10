.class Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;
.super Ljava/lang/Object;
.source "OSDateTimePicker.java"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMinuteWheel()V
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

    .line 518
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelItemChanged(II)V
    .locals 1

    .line 525
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 526
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$700(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    .line 527
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

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
