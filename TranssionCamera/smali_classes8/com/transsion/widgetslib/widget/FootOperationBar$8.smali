.class Lcom/transsion/widgetslib/widget/FootOperationBar$8;
.super Ljava/lang/Object;
.source "FootOperationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$8;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$8;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 808
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 812
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$8;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method
