.class public abstract Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;
.super Ljava/lang/Object;
.source "AbstractVIPSelfieHintUIManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end method

.method public abstract pause()V
.end method

.method public abstract setVIPSelfieHintListener(Lcom/transsion/camera/app/common/IAppUIListener$IVIPSelfieHintListener;)V
.end method

.method public abstract showOrHideVIPSelfHint(ZZ)V
.end method

.method public abstract updateVIPSelfHintLayout(ZI)V
.end method
