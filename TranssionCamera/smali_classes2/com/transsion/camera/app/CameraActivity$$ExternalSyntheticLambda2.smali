.class public final synthetic Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/CameraActivity;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/CameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/app/CameraActivity;->$r8$lambda$tQ6QdDT9c5HoO7AA1sqVV4Jx_u8(Lcom/transsion/camera/app/CameraActivity;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
