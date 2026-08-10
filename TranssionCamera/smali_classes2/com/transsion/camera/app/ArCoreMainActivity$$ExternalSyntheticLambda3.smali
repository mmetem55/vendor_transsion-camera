.class public final synthetic Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ArCoreMainActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onTaskDone(Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->$r8$lambda$WOnvYVziUZOCkP_vDC_vkySOFVM(Lcom/transsion/camera/app/ArCoreMainActivity;Landroid/net/Uri;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V

    return-void
.end method
