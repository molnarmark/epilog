require "../src/epilog"

# Fancy reporter is the default one.
logger = Epilog::Logger.new
logger.success "success!"
logger.error "error!"
logger.fatal "fatal!"
logger.warn "warn!"
logger.log "log!"
logger.info "info!"
logger.start "start!"
logger.ready "ready!"
logger.debug "debug!"
logger.trace "trace!"
