.class public Lcom/transsion/camera/app/ui/PopupOptionManager;
.super Ljava/lang/Object;
.source "PopupOptionManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mNeedShowPopUpOption:Z

.field private mPopupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private showViewKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopupOptionManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    .line 20
    sget-object p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "PopupOptionManager "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addPopupOption(Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;)V
    .locals 3

    .line 24
    sget-object v0, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPopupOption    popupOption.getTag() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    popupOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismissAllPopupOption()Z
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 78
    sget-object v3, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t  =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->onDismiss()V

    .line 84
    check-cast v2, Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCurrentShowView()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->showViewKey:Ljava/lang/String;

    return-object p0
.end method

.method public needShowPopUpOption()Z
    .locals 3

    .line 67
    sget-object v0, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needShowPopUpOption  mNeedShowPopUpOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mNeedShowPopUpOption:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mNeedShowPopUpOption:Z

    return p0
.end method

.method public onPopupDismiss(I)V
    .locals 2

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPopupDismiss  tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPopupShow(ILjava/lang/String;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupShow  tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->showViewKey:Ljava/lang/String;

    .line 33
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;

    if-eqz v0, :cond_0

    .line 37
    check-cast v0, Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setNeedShowPopUpOption(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mNeedShowPopUpOption:Z

    return-void
.end method

.method public updatePopupOptionShow()Z
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 51
    sget-object v3, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasPopupOptionShow  isShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/ui/PopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPopupOptionShow  hasShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/PopupOptionManager;->mNeedShowPopUpOption:Z

    return v1
.end method
