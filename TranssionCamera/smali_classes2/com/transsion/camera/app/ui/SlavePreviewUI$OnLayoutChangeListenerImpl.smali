.class Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;
.super Ljava/lang/Object;
.source "SlavePreviewUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/SlavePreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLayoutChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;Lcom/transsion/camera/app/ui/SlavePreviewUI$1;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 399
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$600(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$400(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/ui/anim/AnimationManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 401
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$600(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 402
    invoke-static {}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$700()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayoutChange mRelativePreviewRect:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$600(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$400(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/ui/anim/AnimationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$600(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
