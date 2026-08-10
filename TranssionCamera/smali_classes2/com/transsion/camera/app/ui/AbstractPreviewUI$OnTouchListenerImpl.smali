.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V
    .locals 0

    .line 1281
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
