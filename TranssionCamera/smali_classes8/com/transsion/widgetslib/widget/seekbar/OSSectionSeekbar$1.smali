.class Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$1;
.super Ljava/lang/Object;
.source "OSSectionSeekbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
