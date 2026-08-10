.class public Lcom/transsion/secondaryhome/TranParam;
.super Ljava/lang/Object;
.source "TranParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/secondaryhome/TranParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mSpecialParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final parcelable:I

.field final serializable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/transsion/secondaryhome/TranParam$1;

    invoke-direct {v0}, Lcom/transsion/secondaryhome/TranParam$1;-><init>()V

    sput-object v0, Lcom/transsion/secondaryhome/TranParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/transsion/secondaryhome/TranParam;->serializable:I

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcom/transsion/secondaryhome/TranParam;->parcelable:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/transsion/secondaryhome/TranParam;->serializable:I

    const/4 v1, 0x2

    .line 29
    iput v1, p0, Lcom/transsion/secondaryhome/TranParam;->parcelable:I

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 56
    iget-object v4, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v4, v1, :cond_1

    .line 58
    iget-object v4, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    const-class v5, Lcom/transsion/secondaryhome/TranParam;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_2
    const-class v0, Lcom/transsion/secondaryhome/TranParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    return-void
.end method

.method public static create(Landroid/os/Bundle;)Lcom/transsion/secondaryhome/TranParam;
    .locals 2

    const-string v0, "param"

    .line 66
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/transsion/secondaryhome/TranParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/transsion/secondaryhome/ParcelUtil;->getParcelableInByteArray([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/secondaryhome/TranParam;

    .line 67
    invoke-direct {v0, p0}, Lcom/transsion/secondaryhome/TranParam;->setBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setBundle(Landroid/os/Bundle;)V
    .locals 4

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    new-instance v1, Lcom/transsion/secondaryhome/TranParam$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/secondaryhome/TranParam$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addInBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 142
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 143
    instance-of v4, v3, Landroid/app/PendingIntent;

    if-nez v4, :cond_1

    instance-of v4, v3, Landroid/content/Intent;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    instance-of v4, v3, Landroid/os/IBinder;

    if-eqz v4, :cond_2

    .line 151
    iget-object v4, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    iget-object v5, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_2

    .line 144
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    iget-object v5, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_3
    invoke-static {p0}, Lcom/transsion/secondaryhome/ParcelUtil;->parcel2Bytes(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public addParam(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Ljava/io/Serializable;

    if-nez v1, :cond_2

    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 102
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParams()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/transsion/secondaryhome/TranParam;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 123
    instance-of v2, v1, Ljava/io/Serializable;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 124
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 126
    :cond_1
    instance-of v2, v1, Landroid/os/Parcelable;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 127
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object p0, p0, Lcom/transsion/secondaryhome/TranParam;->mSpecialParams:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
