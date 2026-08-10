.class Lcom/transsion/widgetslib/blur/DynamicBlur$1;
.super Ljava/lang/Object;
.source "DynamicBlur.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/blur/DynamicBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->access$000(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/transsion/widgetslib/blur/DynamicBlur;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewTreeObserver, onGlobalLayout, runnable delayed remove"

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->updateBlurViewBackground()V

    .line 93
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->access$200(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->access$000(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
