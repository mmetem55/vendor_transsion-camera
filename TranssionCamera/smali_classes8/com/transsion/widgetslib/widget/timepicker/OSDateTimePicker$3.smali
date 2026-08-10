.class Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;
.super Ljava/lang/Object;
.source "OSDateTimePicker.java"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initDayWheel()V
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

    .line 236
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelItemChanged(II)V
    .locals 0

    .line 246
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$400(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    .line 271
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

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
