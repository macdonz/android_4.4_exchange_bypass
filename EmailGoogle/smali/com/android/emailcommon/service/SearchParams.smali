.class public Lcom/android/emailcommon/service/SearchParams;
.super Ljava/lang/Object;
.source "SearchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/SearchParams$SearchParamsError;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/SearchParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mEndDate:Ljava/util/Date;

.field public final mFilter:Ljava/lang/String;

.field public mIncludeChildren:Z

.field public mLimit:I

.field public final mMailboxId:J

.field public mOffset:I

.field public mSearchMailboxId:J

.field public final mStartDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/android/emailcommon/service/SearchParams$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/service/SearchParams$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2
    .parameter "mailboxId"
    .parameter "filter"
    .parameter "searchMailboxId"

    .prologue
    const/4 v1, 0x0

    .line 66
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 44
    const/16 v0, 0xa

    #v0=(PosByte);
    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 47
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 67
    iput-wide p1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 68
    iput-object p3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 70
    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 71
    iput-wide p4, p0, Lcom/android/emailcommon/service/SearchParams;->mSearchMailboxId:J

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "in"

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    .line 160
    #v2=(One);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    #p0=(Reference);
    iput-boolean v2, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 44
    const/16 v1, 0xa

    #v1=(PosByte);
    iput v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 47
    iput v3, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    iput-wide v4, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    .line 167
    .local v0, dateWindow:Landroid/util/SparseArray;
    #v0=(Reference);
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    new-instance v4, Ljava/util/Date;

    #v4=(UninitRef);
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 172
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 173
    new-instance v3, Ljava/util/Date;

    #v3=(UninitRef);
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 177
    :goto_2
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .end local v0           #dateWindow:Landroid/util/SparseArray;
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(One);v3=(Null);v4=(LongLo);v5=(LongHi);v6=(Uninit);
    move v1, v3

    .line 162
    #v1=(Null);
    goto :goto_0

    .line 170
    .restart local v0       #dateWindow:Landroid/util/SparseArray;
    :cond_1
    #v0=(Reference);v1=(Reference);
    iput-object v7, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    goto :goto_1

    .line 175
    :cond_2
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iput-object v7, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 85
    #v2=(Null);
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v1

    .line 88
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/android/emailcommon/service/SearchParams;

    #v3=(Boolean);
    if-nez v3, :cond_3

    :cond_2
    #v3=(Conflicted);
    move v1, v2

    .line 89
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);v3=(Boolean);
    move-object v0, p1

    .line 92
    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/service/SearchParams;

    .line 93
    .local v0, os:Lcom/android/emailcommon/service/SearchParams;
    iget-wide v3, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    #v3=(LongLo);v4=(LongHi);
    iget-wide v5, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    #v3=(Boolean);
    iget-boolean v4, v0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    #v4=(Boolean);
    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    #v4=(Integer);
    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-eq v3, v4, :cond_0

    :cond_4
    #v4=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-wide v2, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "[SearchParams "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 142
    #v3=(Null);
    iget-wide v4, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-boolean v1, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    #v1=(Boolean);
    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    #v1=(Integer);
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    #v0=(UninitRef);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 148
    .local v0, dateWindow:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 155
    return-void

    .end local v0           #dateWindow:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    :cond_2
    #v0=(Uninit);v1=(Boolean);v3=(Null);v4=(LongLo);
    move v1, v3

    .line 143
    #v1=(Null);
    goto :goto_0
.end method
