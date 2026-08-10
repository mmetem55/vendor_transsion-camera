.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;
.super Ljava/lang/Object;
.source "FaceBeautyRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/mode/makeup/listener/RvListener<",
        "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickSelectedItem(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V

    return-void
.end method

.method public bridge synthetic onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 212
    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;->onClickSelectedItem(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;I)V

    return-void
.end method

.method public onItemSelected(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;I)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V

    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 212
    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;->onItemSelected(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;I)V

    return-void
.end method
