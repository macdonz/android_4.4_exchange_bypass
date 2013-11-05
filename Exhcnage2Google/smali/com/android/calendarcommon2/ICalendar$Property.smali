.class public Lcom/android/calendarcommon2/ICalendar$Property;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Parameter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;


# virtual methods
.method public getParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "sb"

    .prologue
    .line 340
    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Property;->mName:Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Property;->getParameterNames()Ljava/util/Set;

    move-result-object v4

    .line 342
    .local v4, parameterNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/String;

    .line 343
    .local v3, parameterName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/calendarcommon2/ICalendar$Property;->getParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/calendarcommon2/ICalendar$Parameter;

    .line 344
    .local v2, param:Lcom/android/calendarcommon2/ICalendar$Parameter;
    const-string v5, ";"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v2, p1}, Lcom/android/calendarcommon2/ICalendar$Parameter;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 348
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #param:Lcom/android/calendarcommon2/ICalendar$Parameter;
    .end local v3           #parameterName:Ljava/lang/String;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Boolean);
    const-string v5, ":"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Property;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    return-void
.end method
