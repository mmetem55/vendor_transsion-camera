.class public final synthetic Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->$r8$lambda$3FLdKcmjmcV9eLQZEqIp70WR8rk(Ljava/lang/String;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)Z

    move-result p0

    return p0
.end method
