.class Lcom/transsion/widgetslib/blur/DynamicBlur$3;
.super Ljava/lang/Object;
.source "DynamicBlur.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


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

    .line 128
    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$3;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$3;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->updateBlurViewBackground()V

    return-void
.end method
