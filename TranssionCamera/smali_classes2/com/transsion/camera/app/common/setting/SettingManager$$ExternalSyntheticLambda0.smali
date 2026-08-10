.class public final synthetic Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->$r8$lambda$MDspDV9C87hwjeUCZZDOWp8oHfY(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method
