.class public final synthetic Lc/d/b/u/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/k/o;


# static fields
.field public static final synthetic a:Lc/d/b/u/w;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/b/u/w;

    invoke-direct {v0}, Lc/d/b/u/w;-><init>()V

    sput-object v0, Lc/d/b/u/w;->a:Lc/d/b/u/w;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/d/b/k/n;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lc/d/b/k/n;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    return-object p1
.end method
