.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLayoutChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1295
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1296
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1297
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1298
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1299
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayoutChange mRelativePreviewRect:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",mAbsolutePreviewRect:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    .line 1300
    invoke-static {p3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1299
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1301
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_0
    return-void
.end method
