.class public final synthetic Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->$r8$lambda$AaXS62rYCY0bu8XML980OkdOohs(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result p0

    return p0
.end method
