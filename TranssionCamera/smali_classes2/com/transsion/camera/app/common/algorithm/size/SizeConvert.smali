.class public Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;
.super Ljava/lang/Object;
.source "SizeConvert.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConvertManager:Lcom/transsion/camera/app/common/algorithm/size/IConvert;

.field private final mConvertedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mReversedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mConvertedMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mReversedMap:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/algorithm/size/ConvertManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mConvertManager:Lcom/transsion/camera/app/common/algorithm/size/IConvert;

    return-void
.end method


# virtual methods
.method public convertSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    if-nez p1, :cond_0

    .line 58
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "convertSize size is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mConvertedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mConvertedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mConvertManager:Lcom/transsion/camera/app/common/algorithm/size/IConvert;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/algorithm/size/IConvert;->convert(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mConvertedMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mReversedMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 66
    :cond_3
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert failed | size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", convertSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public getOriginalSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mReversedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size is not contained in mReversedMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->mReversedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method
