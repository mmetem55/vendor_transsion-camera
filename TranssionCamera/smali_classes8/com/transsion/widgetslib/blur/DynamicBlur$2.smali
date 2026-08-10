.class Lcom/transsion/widgetslib/blur/DynamicBlur$2;
.super Ljava/lang/Object;
.source "DynamicBlur.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurredView(Landroid/view/View;)V
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

    .line 114
    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$2;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/transsion/widgetslib/blur/DynamicBlur;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewTreeObserver, onGlobalLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$2;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {v2}, Lcom/transsion/widgetslib/blur/DynamicBlur;->access$200(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$2;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->updateBlurViewBackground()V

    return-void
.end method
