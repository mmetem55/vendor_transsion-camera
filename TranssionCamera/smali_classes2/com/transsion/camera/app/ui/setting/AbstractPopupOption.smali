.class public Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;
.super Ljava/lang/Object;
.source "AbstractPopupOption.java"


# instance fields
.field public mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

.field private mTag:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/PopupOptionManager;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 17
    iput p2, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mTag:I

    .line 18
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->addPopupOption(Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;)V

    return-void
.end method


# virtual methods
.method public getTag()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mTag:I

    return p0
.end method

.method public isShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDismiss()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mTag:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->onPopupDismiss(I)V

    return-void
.end method

.method public showAtLocation(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mTag:I

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/PopupOptionManager;->onPopupShow(ILjava/lang/String;)V

    return-void
.end method
