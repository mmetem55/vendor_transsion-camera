.class public final synthetic Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/location/LocationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->$r8$lambda$E33YJF6X8cLz6wtOUCQOwpB9q0o(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V

    return-void
.end method
