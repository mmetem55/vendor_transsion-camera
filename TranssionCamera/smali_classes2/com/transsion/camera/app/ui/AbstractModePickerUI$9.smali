.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$9;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 1211
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 1219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStep(ID)V
    .locals 0

    return-void
.end method
