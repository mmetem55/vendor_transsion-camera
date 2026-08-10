.class public final synthetic Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
