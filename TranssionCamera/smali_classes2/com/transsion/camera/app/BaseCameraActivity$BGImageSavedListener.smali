.class Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGImageSavedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1430
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1430
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .locals 0

    .line 1433
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    return-void
.end method
