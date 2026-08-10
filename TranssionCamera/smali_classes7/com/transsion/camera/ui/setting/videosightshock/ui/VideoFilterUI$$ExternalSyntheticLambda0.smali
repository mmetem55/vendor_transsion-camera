.class public final synthetic Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    check-cast p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->$r8$lambda$-_o6WrM_xZToFiEDTaRhOlKIm4o(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z

    move-result p0

    return p0
.end method
