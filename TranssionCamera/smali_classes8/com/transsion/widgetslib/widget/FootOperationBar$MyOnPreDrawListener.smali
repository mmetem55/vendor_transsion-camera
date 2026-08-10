.class Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;
.super Ljava/lang/Object;
.source "FootOperationBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnPreDrawListener"
.end annotation


# instance fields
.field private final mFootOperationBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/FootOperationBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;->mFootOperationBar:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;->mFootOperationBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/FootOperationBar;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/16 p0, 0x8

    .line 206
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$000(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$100(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 208
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
