.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->updateScroller()V

    .line 843
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->runScroller()V

    return-void
.end method
