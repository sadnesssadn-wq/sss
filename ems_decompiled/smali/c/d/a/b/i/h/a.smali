.class public final Lc/d/a/b/i/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/e<",
        "Lc/d/b/u/d1/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/b/i/h/a;

.field public static final b:Lc/d/b/n/d;

.field public static final c:Lc/d/b/n/d;

.field public static final d:Lc/d/b/n/d;

.field public static final e:Lc/d/b/n/d;

.field public static final f:Lc/d/b/n/d;

.field public static final g:Lc/d/b/n/d;

.field public static final h:Lc/d/b/n/d;

.field public static final i:Lc/d/b/n/d;

.field public static final j:Lc/d/b/n/d;

.field public static final k:Lc/d/b/n/d;

.field public static final l:Lc/d/b/n/d;

.field public static final m:Lc/d/b/n/d;

.field public static final n:Lc/d/b/n/d;

.field public static final o:Lc/d/b/n/d;

.field public static final p:Lc/d/b/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lc/d/a/b/i/h/l;->c:Lc/d/a/b/i/h/l;

    new-instance v1, Lc/d/a/b/i/h/a;

    invoke-direct {v1}, Lc/d/a/b/i/h/a;-><init>()V

    sput-object v1, Lc/d/a/b/i/h/a;->a:Lc/d/a/b/i/h/a;

    const/4 v1, 0x1

    .line 1
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    const-string v3, "projectNumber"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 4
    sput-object v2, Lc/d/a/b/i/h/a;->b:Lc/d/b/n/d;

    const/4 v1, 0x2

    .line 5
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_1
    const-string v3, "messageId"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 8
    sput-object v2, Lc/d/a/b/i/h/a;->c:Lc/d/b/n/d;

    const/4 v1, 0x3

    .line 9
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    const-string v3, "instanceId"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 12
    sput-object v2, Lc/d/a/b/i/h/a;->d:Lc/d/b/n/d;

    const/4 v1, 0x4

    .line 13
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_3
    const-string v3, "messageType"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 16
    sput-object v2, Lc/d/a/b/i/h/a;->e:Lc/d/b/n/d;

    const/4 v1, 0x5

    .line 17
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_4

    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    const-string v3, "sdkPlatform"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 20
    sput-object v2, Lc/d/a/b/i/h/a;->f:Lc/d/b/n/d;

    const/4 v1, 0x6

    .line 21
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_5

    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_5
    const-string v3, "packageName"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 24
    sput-object v2, Lc/d/a/b/i/h/a;->g:Lc/d/b/n/d;

    const/4 v1, 0x7

    .line 25
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_6

    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_6
    const-string v3, "collapseKey"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 28
    sput-object v2, Lc/d/a/b/i/h/a;->h:Lc/d/b/n/d;

    const/16 v1, 0x8

    .line 29
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_7

    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_7
    const-string v3, "priority"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 32
    sput-object v2, Lc/d/a/b/i/h/a;->i:Lc/d/b/n/d;

    const/16 v1, 0x9

    .line 33
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_8

    :cond_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_8
    const-string v3, "ttl"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 36
    sput-object v2, Lc/d/a/b/i/h/a;->j:Lc/d/b/n/d;

    const/16 v1, 0xa

    .line 37
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_9

    :cond_9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_9
    const-string v3, "topic"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 40
    sput-object v2, Lc/d/a/b/i/h/a;->k:Lc/d/b/n/d;

    const/16 v1, 0xb

    .line 41
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_a

    :cond_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_a
    const-string v3, "bulkId"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 44
    sput-object v2, Lc/d/a/b/i/h/a;->l:Lc/d/b/n/d;

    const/16 v1, 0xc

    .line 45
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_b

    :cond_b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_b
    const-string v3, "event"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 48
    sput-object v2, Lc/d/a/b/i/h/a;->m:Lc/d/b/n/d;

    const/16 v1, 0xd

    .line 49
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_c

    :cond_c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_c
    const-string v3, "analyticsLabel"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 52
    sput-object v2, Lc/d/a/b/i/h/a;->n:Lc/d/b/n/d;

    const/16 v1, 0xe

    .line 53
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Lc/d/b/n/d;

    if-nez v1, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_d

    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_d
    const-string v3, "campaignId"

    invoke-direct {v2, v3, v1, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 56
    sput-object v2, Lc/d/a/b/i/h/a;->o:Lc/d/b/n/d;

    const/16 v1, 0xf

    .line 57
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Lc/d/b/n/d;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_e

    :cond_e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_e
    const-string v2, "composerLabel"

    invoke-direct {v1, v2, v0, v4}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 60
    sput-object v1, Lc/d/a/b/i/h/a;->p:Lc/d/b/n/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lc/d/b/u/d1/a;

    check-cast p2, Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->b:Lc/d/b/n/d;

    .line 1
    iget-wide v1, p1, Lc/d/b/u/d1/a;->a:J

    .line 2
    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->c:Lc/d/b/n/d;

    .line 3
    iget-object v1, p1, Lc/d/b/u/d1/a;->b:Ljava/lang/String;

    .line 4
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->d:Lc/d/b/n/d;

    .line 5
    iget-object v1, p1, Lc/d/b/u/d1/a;->c:Ljava/lang/String;

    .line 6
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->e:Lc/d/b/n/d;

    .line 7
    iget-object v1, p1, Lc/d/b/u/d1/a;->d:Lc/d/b/u/d1/a$c;

    .line 8
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->f:Lc/d/b/n/d;

    .line 9
    iget-object v1, p1, Lc/d/b/u/d1/a;->e:Lc/d/b/u/d1/a$d;

    .line 10
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->g:Lc/d/b/n/d;

    .line 11
    iget-object v1, p1, Lc/d/b/u/d1/a;->f:Ljava/lang/String;

    .line 12
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->h:Lc/d/b/n/d;

    .line 13
    iget-object v1, p1, Lc/d/b/u/d1/a;->g:Ljava/lang/String;

    .line 14
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->i:Lc/d/b/n/d;

    .line 15
    iget v1, p1, Lc/d/b/u/d1/a;->h:I

    .line 16
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->b(Lc/d/b/n/d;I)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->j:Lc/d/b/n/d;

    .line 17
    iget v1, p1, Lc/d/b/u/d1/a;->i:I

    .line 18
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->b(Lc/d/b/n/d;I)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->k:Lc/d/b/n/d;

    .line 19
    iget-object v1, p1, Lc/d/b/u/d1/a;->j:Ljava/lang/String;

    .line 20
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->l:Lc/d/b/n/d;

    .line 21
    iget-wide v1, p1, Lc/d/b/u/d1/a;->k:J

    .line 22
    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->m:Lc/d/b/n/d;

    .line 23
    iget-object v1, p1, Lc/d/b/u/d1/a;->l:Lc/d/b/u/d1/a$b;

    .line 24
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->n:Lc/d/b/n/d;

    .line 25
    iget-object v1, p1, Lc/d/b/u/d1/a;->m:Ljava/lang/String;

    .line 26
    invoke-interface {p2, v0, v1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->o:Lc/d/b/n/d;

    .line 27
    iget-wide v1, p1, Lc/d/b/u/d1/a;->n:J

    .line 28
    invoke-interface {p2, v0, v1, v2}, Lc/d/b/n/f;->a(Lc/d/b/n/d;J)Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/a;->p:Lc/d/b/n/d;

    .line 29
    iget-object p1, p1, Lc/d/b/u/d1/a;->o:Ljava/lang/String;

    .line 30
    invoke-interface {p2, v0, p1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    return-void
.end method
