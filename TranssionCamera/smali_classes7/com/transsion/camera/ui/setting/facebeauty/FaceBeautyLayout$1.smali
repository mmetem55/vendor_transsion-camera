.class Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;
.super Ljava/lang/Object;
.source "FaceBeautyLayout.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 29
    iget-object p1, p2, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;->effectId:Ljava/lang/String;

    .line 30
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->access$000(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->access$000(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
