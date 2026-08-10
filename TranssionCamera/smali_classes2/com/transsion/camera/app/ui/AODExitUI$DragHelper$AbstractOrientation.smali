.class abstract Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;
.super Ljava/lang/Object;
.source "AODExitUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractOrientation"
.end annotation


# instance fields
.field private final mOrientation:I

.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;I)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->mOrientation:I

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;)I
    .locals 0

    .line 266
    iget p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->mOrientation:I

    return p0
.end method


# virtual methods
.method protected drag(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final entry()V
    .locals 3

    .line 275
    invoke-static {}, Lcom/transsion/camera/app/ui/AODExitUI;->access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1100(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1100(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    move-result-object v2

    iget v2, v2, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1100(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1100(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1100(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->onLeave()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1102(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    .line 282
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->onEntry()V

    :cond_2
    return-void
.end method

.method protected onEntry()V
    .locals 0

    return-void
.end method

.method protected onLeave()V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$1200(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->cancel()V

    return-void
.end method

.method protected updateTranslation(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
